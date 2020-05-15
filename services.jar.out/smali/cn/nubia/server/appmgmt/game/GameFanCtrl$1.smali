.class Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;
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

    .line 79
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 82
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$200(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Lcn/nubia/game/GameKeysHelper;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$100(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/game/GameKeysHelper;->getGameKeysDBValue(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$002(Lcn/nubia/server/appmgmt/game/GameFanCtrl;I)I

    .line 83
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GameFanCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGamekeysObserver gameKeysVaule = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gameKeysLastVaule = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$400(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$400(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->IsGameKeysOpened(I)Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->IsGameKeysOpened(I)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$402(Lcn/nubia/server/appmgmt/game/GameFanCtrl;I)I

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->access$500(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V

    .line 88
    :cond_1
    return-void
.end method
