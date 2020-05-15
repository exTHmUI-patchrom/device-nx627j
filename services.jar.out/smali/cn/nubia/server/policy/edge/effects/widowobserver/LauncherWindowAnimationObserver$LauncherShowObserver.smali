.class Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;
.super Landroid/database/ContentObserver;
.source "LauncherWindowAnimationObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherShowObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    .line 56
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    return-void
.end method

.method private onChangeInner(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 70
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->access$200(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->access$300(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_launcher_first_frame_draw"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "flag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-static {v2}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;->onLauncherFirstFrameDraw()V

    .line 77
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-static {v2, v1}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->access$202(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;Z)Z

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 62
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;->onChangeInner(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherShowObserver;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->access$100(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
