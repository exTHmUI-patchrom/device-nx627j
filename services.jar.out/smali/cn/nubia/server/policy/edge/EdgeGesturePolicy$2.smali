.class Lcn/nubia/server/policy/edge/EdgeGesturePolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "EdgeGesturePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/EdgeGesturePolicy;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .line 80
    iput-object p1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$2;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$2;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->access$100(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    .line 85
    .local v0, "userUnlocked":Z
    const-string v1, "EdgeGesturePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user unlock is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/LogUtils;->sysi(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$2;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->access$200(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$2;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->access$202(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;Z)Z

    .line 88
    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$2;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->access$300(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/server/policy/edge/ActionStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/ActionStateMachine;->start()V

    .line 89
    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$2;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->access$400(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/server/policy/edge/GestureSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/GestureSettings;->systemBooted()V

    .line 91
    :cond_0
    return-void
.end method
