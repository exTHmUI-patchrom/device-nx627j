.class Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;
.super Landroid/os/Handler;
.source "PressGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/presssensor/PressGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressGestureDetector;


# direct methods
.method private constructor <init>(Lcn/nubia/server/presssensor/PressGestureDetector;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/presssensor/PressGestureDetector;Lcn/nubia/server/presssensor/PressGestureDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/presssensor/PressGestureDetector;
    .param p2, "x1"    # Lcn/nubia/server/presssensor/PressGestureDetector$1;

    .line 80
    invoke-direct {p0, p1}, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;-><init>(Lcn/nubia/server/presssensor/PressGestureDetector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$300(Lcn/nubia/server/presssensor/PressGestureDetector;I)V

    .line 104
    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$300(Lcn/nubia/server/presssensor/PressGestureDetector;I)V

    .line 101
    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$502(Lcn/nubia/server/presssensor/PressGestureDetector;Z)Z

    .line 92
    const-string v0, "PressSensorService"

    const-string v3, "[GestureDetector] double hold timeout"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$600(Lcn/nubia/server/presssensor/PressGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-static {v0, v2}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$300(Lcn/nubia/server/presssensor/PressGestureDetector;I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$702(Lcn/nubia/server/presssensor/PressGestureDetector;Z)Z

    .line 98
    goto :goto_0

    .line 86
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$202(Lcn/nubia/server/presssensor/PressGestureDetector;Z)Z

    .line 87
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$300(Lcn/nubia/server/presssensor/PressGestureDetector;I)V

    .line 88
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$400(Lcn/nubia/server/presssensor/PressGestureDetector;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    nop

    .line 108
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
