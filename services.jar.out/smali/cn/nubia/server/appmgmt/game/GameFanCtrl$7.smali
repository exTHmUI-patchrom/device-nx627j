.class Lcn/nubia/server/appmgmt/game/GameFanCtrl$7;
.super Ljava/lang/Object;
.source "GameFanCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameFanCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 210
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$7;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 214
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$7;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$600(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$7;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    const-string/jumbo v1, "sys/kernel/fan/fan_speed_level"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$7;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    const-string/jumbo v1, "sys/kernel/fan/fan_speed_level"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 221
    :goto_1
    return-void
.end method
