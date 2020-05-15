.class Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;
.super Landroid/database/ContentObserver;
.source "GamePerformanceModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 97
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .line 100
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    .line 101
    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_db_game_keys"

    .line 100
    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, "gameKeys":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$200(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Lcn/nubia/game/GameKeysHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeys(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$102(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Z)Z

    .line 104
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$300(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/app/KeyguardManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$302(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 107
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$300(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "GamePerformanceModeCtrl"

    const-string v2, "******mGamekeysObserver  isKeyguardLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$400(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$100(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->getGameLauncherAppNameList()Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "gameLauncherAppNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    .local v4, "pkglist":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v3, v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$500(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;Ljava/lang/String;)I

    move-result v3

    .line 118
    .local v3, "mode":I
    if-eqz v3, :cond_3

    .line 119
    iget-object v5, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "nubia_performance_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 123
    .end local v3    # "mode":I
    .end local v4    # "pkglist":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 125
    .end local v2    # "gameLauncherAppNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    goto :goto_2

    .line 126
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nubia_performance_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$1;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$600(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)V

    .line 129
    :goto_2
    return-void
.end method
