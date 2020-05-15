.class Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;
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

    .line 151
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 155
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->IsGameKeysOpened(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$100(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_fan_off_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 157
    .local v0, "switchState":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    const-string/jumbo v2, "sys/kernel/fan/fan_enable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    if-nez v0, :cond_0

    .line 160
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    const-string/jumbo v2, "sys/kernel/fan/fan_speed_level"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$600(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    const-string/jumbo v2, "sys/kernel/fan/fan_speed_level"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    const-string/jumbo v2, "sys/kernel/fan/fan_speed_level"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 168
    .end local v0    # "switchState":I
    :goto_0
    goto :goto_1

    .line 169
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    const-string/jumbo v1, "sys/kernel/fan/fan_enable"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    const-string/jumbo v1, "sys/kernel/fan/fan_speed_level"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    goto :goto_2

    .line 172
    :catch_0
    move-exception v0

    .line 174
    :goto_2
    return-void
.end method
