.class Landroid/view/RedPacketHelper$1;
.super Landroid/os/Handler;
.source "RedPacketHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RedPacketHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/RedPacketHelper;


# direct methods
.method constructor <init>(Landroid/view/RedPacketHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/RedPacketHelper;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 65
    iput-object p1, p0, Landroid/view/RedPacketHelper$1;->this$0:Landroid/view/RedPacketHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 68
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 69
    .local v0, "numOfSystemUI":I
    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/view/RedPacketHelper$1;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v1}, Landroid/view/RedPacketHelper;->access$000(Landroid/view/RedPacketHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Landroid/view/RedPacketHelper$1;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v1}, Landroid/view/RedPacketHelper;->access$200(Landroid/view/RedPacketHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/view/RedPacketHelper$1;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v2}, Landroid/view/RedPacketHelper;->access$100(Landroid/view/RedPacketHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    iget-object v1, p0, Landroid/view/RedPacketHelper$1;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v1}, Landroid/view/RedPacketHelper;->access$200(Landroid/view/RedPacketHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/view/RedPacketHelper$1;->this$0:Landroid/view/RedPacketHelper;

    invoke-static {v2}, Landroid/view/RedPacketHelper;->access$100(Landroid/view/RedPacketHelper;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 72
    :cond_0
    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    .line 73
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/RedPacketHelper;->access$302(Z)Z

    goto :goto_0

    .line 75
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/RedPacketHelper;->access$302(Z)Z

    .line 77
    :goto_0
    return-void
.end method
