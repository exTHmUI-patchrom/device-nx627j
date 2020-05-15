.class Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$5;
.super Ljava/lang/Object;
.source "GamePerformanceModeCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->getGamekeyStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 315
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "rebootKeyStatus":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$200(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Lcn/nubia/game/GameKeysHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/game/GameKeysHelper;->readNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 320
    if-nez v0, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GamePerformanceModeCtrl"

    const-string v2, "getGamekeyStatus re-open game keys true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$102(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Z)Z

    goto :goto_0

    .line 326
    :cond_2
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    const-string v1, "GamePerformanceModeCtrl"

    const-string v2, "getGamekeyStatus re-open game keys false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$5;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$102(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Z)Z

    .line 330
    :cond_3
    :goto_0
    return-void
.end method
