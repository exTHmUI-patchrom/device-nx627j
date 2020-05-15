.class Lcn/nubia/server/appmgmt/game/GameFanCtrl$6;
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

    .line 185
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 189
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    const-string/jumbo v1, "sys/kernel/fan/fan_speed_level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$6;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$800(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 192
    :goto_0
    return-void
.end method
