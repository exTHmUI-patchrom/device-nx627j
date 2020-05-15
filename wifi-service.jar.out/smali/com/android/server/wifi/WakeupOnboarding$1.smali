.class Lcom/android/server/wifi/WakeupOnboarding$1;
.super Landroid/content/BroadcastReceiver;
.source "WakeupOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WakeupOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WakeupOnboarding;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WakeupOnboarding;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WakeupOnboarding;

    .line 68
    iput-object p1, p0, Lcom/android/server/wifi/WakeupOnboarding$1;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3fa2670f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x1e3259b2

    if-eq v1, v2, :cond_1

    const v2, 0x6996def5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.server.wifi.wakeup.DISMISS_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "com.android.server.wifi.wakeup.OPEN_WIFI_PREFERENCES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v1, "com.android.server.wifi.wakeup.TURN_OFF_WIFI_WAKE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 88
    const-string v0, "WakeupOnboarding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding$1;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WakeupOnboarding;->access$200(Lcom/android/server/wifi/WakeupOnboarding;Z)V

    .line 86
    goto :goto_2

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding$1;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-static {v0}, Lcom/android/server/wifi/WakeupOnboarding;->access$000(Lcom/android/server/wifi/WakeupOnboarding;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding$1;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-static {v0}, Lcom/android/server/wifi/WakeupOnboarding;->access$000(Lcom/android/server/wifi/WakeupOnboarding;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_IP_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding$1;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WakeupOnboarding;->access$200(Lcom/android/server/wifi/WakeupOnboarding;Z)V

    .line 83
    goto :goto_2

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding$1;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-static {v0}, Lcom/android/server/wifi/WakeupOnboarding;->access$100(Lcom/android/server/wifi/WakeupOnboarding;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WakeupOnboarding$1;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-static {v1}, Lcom/android/server/wifi/WakeupOnboarding;->access$000(Lcom/android/server/wifi/WakeupOnboarding;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi_wakeup_enabled"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding$1;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WakeupOnboarding;->access$200(Lcom/android/server/wifi/WakeupOnboarding;Z)V

    .line 76
    nop

    .line 90
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
