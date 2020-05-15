.class Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CABCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/CABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/CABCController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/CABCController;)V
    .locals 2

    .line 635
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 636
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 637
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 640
    invoke-static {p1}, Lcn/nubia/server/appmgmt/CABCController;->access$900(Lcn/nubia/server/appmgmt/CABCController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 641
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 645
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/CABCController;->access$402(Lcn/nubia/server/appmgmt/CABCController;Z)Z

    goto :goto_0

    .line 648
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/CABCController;->access$402(Lcn/nubia/server/appmgmt/CABCController;Z)Z

    .line 650
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/CABCController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController;->access$500(Lcn/nubia/server/appmgmt/CABCController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const-string v0, "CABCController"

    const-string/jumbo v1, "screen off. adjust CABC mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1
    :goto_0
    return-void
.end method
