.class Lcn/nubia/server/breathinglight/MissEventObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "MissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/MissEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/MissEventObserver;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/breathinglight/MissEventObserver;

    .line 73
    iput-object p1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$1;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    const-string v1, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$1;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-virtual {v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->requestBreathingLight()V

    .line 83
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$1;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    const-string v2, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/server/breathinglight/MissEventObserver;->access$100(Lcn/nubia/server/breathinglight/MissEventObserver;Ljava/lang/String;II)V

    goto :goto_1

    .line 86
    :cond_1
    const-string v1, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$1;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-virtual {v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->closeBreathingLight()V

    .line 88
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$1;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    const-string v2, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    const/4 v3, 0x1

    const/16 v4, 0x16

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/server/breathinglight/MissEventObserver;->access$100(Lcn/nubia/server/breathinglight/MissEventObserver;Ljava/lang/String;II)V

    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver$1;->this$0:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-static {v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->access$000(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    .line 92
    :cond_3
    :goto_1
    return-void
.end method
