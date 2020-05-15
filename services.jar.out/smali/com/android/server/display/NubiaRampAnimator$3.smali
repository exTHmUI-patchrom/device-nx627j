.class Lcom/android/server/display/NubiaRampAnimator$3;
.super Ljava/lang/Object;
.source "NubiaRampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaRampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaRampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaRampAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 533
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$3;, "Lcom/android/server/display/NubiaRampAnimator$3;"
    iput-object p1, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 536
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$3;, "Lcom/android/server/display/NubiaRampAnimator$3;"
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$100(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$1200(Lcom/android/server/display/NubiaRampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 540
    .local v0, "frameTimeNanos":J
    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v2}, Lcom/android/server/display/NubiaRampAnimator;->access$1300(Lcom/android/server/display/NubiaRampAnimator;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    .line 541
    .local v2, "timeDelta":F
    iget-object v3, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/NubiaRampAnimator;->access$1302(Lcom/android/server/display/NubiaRampAnimator;J)J

    .line 543
    const/4 v3, 0x0

    .line 545
    .local v3, "amount":F
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$1400(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$1500(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v2, v4

    .line 547
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$1600(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$1700(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    if-le v4, v5, :cond_1

    .line 548
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$1700(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$1600(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 549
    .local v4, "tmpAnimatedValue":F
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$1702(Lcom/android/server/display/NubiaRampAnimator;I)I

    goto :goto_0

    .line 551
    .end local v4    # "tmpAnimatedValue":F
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$1700(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$1600(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 552
    .restart local v4    # "tmpAnimatedValue":F
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$1702(Lcom/android/server/display/NubiaRampAnimator;I)I

    .line 554
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$100(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 555
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$1900(Lcom/android/server/display/NubiaRampAnimator;)Landroid/util/IntProperty;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/NubiaRampAnimator;->access$1800(Lcom/android/server/display/NubiaRampAnimator;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v7}, Lcom/android/server/display/NubiaRampAnimator;->access$1700(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 557
    .end local v4    # "tmpAnimatedValue":F
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$2000(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 558
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$2100(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v2, v4

    .line 559
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$2200(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2300(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 560
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$2300(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2200(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 561
    .restart local v4    # "tmpAnimatedValue":F
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$2302(Lcom/android/server/display/NubiaRampAnimator;I)I

    goto :goto_1

    .line 563
    .end local v4    # "tmpAnimatedValue":F
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$2300(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2200(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 564
    .restart local v4    # "tmpAnimatedValue":F
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$2302(Lcom/android/server/display/NubiaRampAnimator;I)I

    .line 566
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$100(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 567
    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    iget-object v6, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v6}, Lcom/android/server/display/NubiaRampAnimator;->access$2300(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$2400(Lcom/android/server/display/NubiaRampAnimator;I)Z

    .line 570
    .end local v4    # "tmpAnimatedValue":F
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$1600(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$1700(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$2200(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2300(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 571
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$300(Lcom/android/server/display/NubiaRampAnimator;Z)V

    goto :goto_2

    .line 573
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$1600(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$1700(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    const/4 v7, 0x0

    if-ne v4, v5, :cond_6

    .line 574
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4, v7}, Lcom/android/server/display/NubiaRampAnimator;->access$1402(Lcom/android/server/display/NubiaRampAnimator;Z)Z

    .line 575
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$2002(Lcom/android/server/display/NubiaRampAnimator;Z)Z

    .line 577
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$2200(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v5}, Lcom/android/server/display/NubiaRampAnimator;->access$2300(Lcom/android/server/display/NubiaRampAnimator;)I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 578
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4, v7}, Lcom/android/server/display/NubiaRampAnimator;->access$2002(Lcom/android/server/display/NubiaRampAnimator;Z)Z

    .line 579
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4, v6}, Lcom/android/server/display/NubiaRampAnimator;->access$1402(Lcom/android/server/display/NubiaRampAnimator;Z)Z

    .line 581
    :cond_7
    iget-object v4, p0, Lcom/android/server/display/NubiaRampAnimator$3;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v4}, Lcom/android/server/display/NubiaRampAnimator;->access$2500(Lcom/android/server/display/NubiaRampAnimator;)V

    .line 583
    :goto_2
    return-void
.end method
