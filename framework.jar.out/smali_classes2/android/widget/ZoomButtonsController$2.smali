.class Landroid/widget/ZoomButtonsController$2;
.super Landroid/os/Handler;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ZoomButtonsController;

    .line 172
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$300(Landroid/widget/ZoomButtonsController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "ZoomButtonsController"

    const-string v1, "Cannot make the zoom controller visible if the owner view is not attached to a window."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 182
    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$2;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$200(Landroid/widget/ZoomButtonsController;)V

    .line 178
    nop

    .line 196
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
