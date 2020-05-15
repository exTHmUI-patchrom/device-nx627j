.class Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer2Impl$TimeProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4710
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    .line 4711
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4712
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 4716
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4717
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4728
    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$7300(Landroid/media/MediaPlayer2Impl$TimeProvider;Landroid/util/Pair;)V

    goto :goto_0

    .line 4725
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$7200(Landroid/media/MediaPlayer2Impl$TimeProvider;)V

    .line 4726
    goto :goto_0

    .line 4722
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$7100(Landroid/media/MediaPlayer2Impl$TimeProvider;)V

    .line 4723
    goto :goto_0

    .line 4719
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->access$7000(Landroid/media/MediaPlayer2Impl$TimeProvider;Z)V

    .line 4720
    nop

    .line 4732
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
