.class final Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "ColorfulLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;


# direct methods
.method private constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
    .param p2, "x1"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$1;

    .line 191
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 194
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] DefaultState: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLightLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$400()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 230
    :pswitch_0
    return v1

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$1200(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V

    .line 227
    return v1

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$1100(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V

    .line 223
    return v1

    .line 218
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$1000(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V

    .line 219
    return v1

    .line 214
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$900(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V

    .line 215
    return v1

    .line 210
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$800(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V

    .line 211
    return v1

    .line 206
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$700(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V

    .line 207
    return v1

    .line 202
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$600(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V

    .line 203
    return v1

    .line 198
    :pswitch_8
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$500(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V

    .line 199
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
