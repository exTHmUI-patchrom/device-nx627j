.class Lcn/nubia/server/appmgmt/game/GameFanCtrl$2;
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

    .line 91
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .line 94
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GameFanCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFanSwitchObserver fanSwitchState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$100(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "game_fan_off_on"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$500(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V

    .line 96
    return-void
.end method
