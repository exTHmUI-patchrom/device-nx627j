.class Lcn/nubia/server/presssensor/PressGestureMutex$1;
.super Landroid/content/BroadcastReceiver;
.source "PressGestureMutex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressGestureMutex;-><init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressSensorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressGestureMutex;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressGestureMutex;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 84
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex$1;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 87
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex$1;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$002(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z

    goto :goto_0

    .line 89
    :cond_0
    const-string v0, "cn.nubia.systemui.SHUTDOWN_REBOOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex$1;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    const-string/jumbo v1, "show"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$102(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z

    .line 93
    :cond_1
    :goto_0
    return-void
.end method
