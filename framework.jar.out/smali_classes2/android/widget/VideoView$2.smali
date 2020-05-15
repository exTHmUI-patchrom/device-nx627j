.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    .line 465
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 467
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 470
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v2

    .line 473
    .local v2, "data":Landroid/media/Metadata;
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 474
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 475
    invoke-virtual {v2, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    move v6, v0

    goto :goto_1

    .line 475
    :cond_1
    :goto_0
    nop

    .line 474
    move v6, v4

    :goto_1
    invoke-static {v5, v6}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    .line 476
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/media/Metadata;->has(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 477
    invoke-virtual {v2, v1}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 476
    :cond_2
    move v1, v0

    goto :goto_3

    .line 477
    :cond_3
    :goto_2
    nop

    .line 476
    move v1, v4

    :goto_3
    invoke-static {v5, v1}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    .line 478
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 479
    invoke-virtual {v2, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    .line 478
    :cond_4
    move v5, v0

    goto :goto_5

    .line 479
    :cond_5
    :goto_4
    nop

    .line 478
    move v5, v4

    :goto_5
    invoke-static {v1, v5}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    goto :goto_6

    .line 481
    :cond_6
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v6, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v6, v4}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    move-result v6

    invoke-static {v5, v6}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    move-result v5

    invoke-static {v1, v5}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    .line 484
    :goto_6
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 485
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v5}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 487
    :cond_7
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 488
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 490
    :cond_8
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-static {v1, v4}, Landroid/widget/VideoView;->access$002(Landroid/widget/VideoView;I)I

    .line 491
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-static {v1, v4}, Landroid/widget/VideoView;->access$102(Landroid/widget/VideoView;I)I

    .line 493
    iget-object v1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v1

    .line 494
    .local v1, "seekToPosition":I
    if-eqz v1, :cond_9

    .line 495
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v4, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 497
    :cond_9
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v4

    if-eqz v4, :cond_c

    .line 499
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v5}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v6}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 500
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v5}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v5

    if-ne v4, v5, :cond_d

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v5}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v5

    if-ne v4, v5, :cond_d

    .line 504
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, v3, :cond_a

    .line 505
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 506
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 507
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_7

    .line 509
    :cond_a
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_d

    if-nez v1, :cond_b

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    .line 510
    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    if-lez v3, :cond_d

    .line 511
    :cond_b
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 513
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_7

    .line 520
    :cond_c
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 521
    iget-object v0, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 524
    :cond_d
    :goto_7
    return-void
.end method
