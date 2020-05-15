.class Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;
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

    .line 132
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 135
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$000(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_performance_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$702(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;I)I

    .line 136
    const-string v0, "GamePerformanceModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******mPerformanceModeObserver  mGamePerformanceMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$700(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$700(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "persist.sys.cpu.mode_type"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    const-string/jumbo v0, "persist.sys.cpu.mode_type"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl$2;->this$0:Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$700(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->access$800(Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;I)V

    .line 143
    return-void
.end method
