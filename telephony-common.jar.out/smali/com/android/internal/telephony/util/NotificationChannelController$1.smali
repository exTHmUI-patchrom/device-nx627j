.class Lcom/android/internal/telephony/util/NotificationChannelController$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationChannelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/NotificationChannelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/util/NotificationChannelController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/util/NotificationChannelController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/util/NotificationChannelController;

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/util/NotificationChannelController$1;->this$0:Lcom/android/internal/telephony/util/NotificationChannelController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 144
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->access$000(Landroid/content/Context;)V

    goto :goto_0

    .line 147
    :cond_0
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, -0x1

    .line 150
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 151
    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->access$100(Landroid/content/Context;)V

    .line 154
    :cond_1
    :goto_0
    return-void
.end method
