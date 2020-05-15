.class final Landroid/service/vr/VrListenerService$VrListenerHandler;
.super Landroid/os/Handler;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/VrListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VrListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/vr/VrListenerService;


# direct methods
.method public constructor <init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 81
    iput-object p1, p0, Landroid/service/vr/VrListenerService$VrListenerHandler;->this$0:Landroid/service/vr/VrListenerService;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/service/vr/VrListenerService$VrListenerHandler;->this$0:Landroid/service/vr/VrListenerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;ZI)V

    .line 93
    :goto_1
    return-void
.end method
