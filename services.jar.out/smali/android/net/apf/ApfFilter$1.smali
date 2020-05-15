.class Landroid/net/apf/ApfFilter$1;
.super Landroid/content/BroadcastReceiver;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfFilter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;

    .line 333
    iput-object p1, p0, Landroid/net/apf/ApfFilter$1;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 336
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string/jumbo v1, "power"

    .line 339
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 340
    .local v1, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    .line 341
    .local v2, "deviceIdle":Z
    iget-object v3, p0, Landroid/net/apf/ApfFilter$1;->this$0:Landroid/net/apf/ApfFilter;

    invoke-virtual {v3, v2}, Landroid/net/apf/ApfFilter;->setDozeMode(Z)V

    .line 343
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    .end local v2    # "deviceIdle":Z
    :cond_0
    return-void
.end method
