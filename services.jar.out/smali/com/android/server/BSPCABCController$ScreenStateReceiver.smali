.class Lcom/android/server/BSPCABCController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BSPCABCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BSPCABCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BSPCABCController;


# direct methods
.method public constructor <init>(Lcom/android/server/BSPCABCController;)V
    .locals 2

    .line 631
    iput-object p1, p0, Lcom/android/server/BSPCABCController$ScreenStateReceiver;->this$0:Lcom/android/server/BSPCABCController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 632
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 633
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 636
    invoke-static {p1}, Lcom/android/server/BSPCABCController;->access$1000(Lcom/android/server/BSPCABCController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 641
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/server/BSPCABCController$ScreenStateReceiver;->this$0:Lcom/android/server/BSPCABCController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/BSPCABCController;->access$402(Lcom/android/server/BSPCABCController;Z)Z

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/server/BSPCABCController$ScreenStateReceiver;->this$0:Lcom/android/server/BSPCABCController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/BSPCABCController;->access$402(Lcom/android/server/BSPCABCController;Z)Z

    .line 646
    iget-object v0, p0, Lcom/android/server/BSPCABCController$ScreenStateReceiver;->this$0:Lcom/android/server/BSPCABCController;

    invoke-static {v0}, Lcom/android/server/BSPCABCController;->access$500(Lcom/android/server/BSPCABCController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    const-string v0, "BSPCABCController"

    const-string/jumbo v1, "screen off. adjust CABC mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_1
    :goto_0
    return-void
.end method
