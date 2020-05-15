.class Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;
.super Landroid/os/Handler;
.source "DoubleTapAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/DoubleTapAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$300(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V

    .line 66
    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$200(Lcn/nubia/server/policy/edge/DoubleTapAnim;FF)V

    .line 63
    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$UIHandler;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->init()V

    .line 60
    nop

    .line 70
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
