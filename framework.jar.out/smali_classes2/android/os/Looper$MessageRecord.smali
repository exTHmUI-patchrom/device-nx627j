.class Landroid/os/Looper$MessageRecord;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageRecord"
.end annotation


# instance fields
.field private arg1:I

.field private arg2:I

.field private callback:Ljava/lang/String;

.field delay:J

.field dispatchingTime:J

.field finishedTime:J

.field private obj:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private what:I

.field private when:J


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    invoke-virtual {p0, p1}, Landroid/os/Looper$MessageRecord;->copy(Landroid/os/Message;)V

    .line 575
    return-void
.end method

.method private reset()V
    .locals 4

    .line 578
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->when:J

    .line 579
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    .line 580
    const/4 v3, 0x0

    iput v3, p0, Landroid/os/Looper$MessageRecord;->what:I

    .line 581
    iput v3, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    .line 582
    iput v3, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    .line 583
    iput-object v2, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    .line 584
    iput-object v2, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    .line 585
    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->dispatchingTime:J

    .line 586
    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->finishedTime:J

    .line 587
    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->delay:J

    .line 588
    return-void
.end method


# virtual methods
.method public copy(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 591
    invoke-direct {p0}, Landroid/os/Looper$MessageRecord;->reset()V

    .line 592
    iget-wide v0, p1, Landroid/os/Message;->when:J

    iput-wide v0, p0, Landroid/os/Looper$MessageRecord;->when:J

    .line 593
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 594
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    goto :goto_0

    .line 597
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Looper$MessageRecord;->what:I

    .line 600
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    .line 601
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    .line 604
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_2

    .line 605
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    .line 608
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    .line 612
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    .line 614
    :cond_4
    return-void
.end method

.method threadLagToString()Ljava/lang/String;
    .locals 2

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 666
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 667
    const-string v1, "callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 670
    :cond_0
    const-string/jumbo v1, "what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget v1, p0, Landroid/os/Looper$MessageRecord;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    :goto_0
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    if-eqz v1, :cond_1

    .line 675
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    :cond_1
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    if-eqz v1, :cond_2

    .line 680
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 684
    :cond_2
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 685
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_3
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 692
    :cond_4
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toString(J)Ljava/lang/String;
    .locals 5
    .param p1, "now"    # J

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-wide v1, p0, Landroid/os/Looper$MessageRecord;->finishedTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 620
    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-wide v1, p0, Landroid/os/Looper$MessageRecord;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 622
    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_0
    const-string v1, " dispatching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget-wide v1, p0, Landroid/os/Looper$MessageRecord;->dispatchingTime:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 627
    const-string v1, " sending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-wide v1, p0, Landroid/os/Looper$MessageRecord;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 629
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 630
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 631
    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->callback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 634
    :cond_1
    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget v1, p0, Landroid/os/Looper$MessageRecord;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    :goto_0
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    if-eqz v1, :cond_2

    .line 639
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    :cond_2
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    if-eqz v1, :cond_3

    .line 644
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    :cond_3
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 649
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->obj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_4
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    iget-object v1, p0, Landroid/os/Looper$MessageRecord;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 656
    :cond_5
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget v1, p0, Landroid/os/Looper$MessageRecord;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    :goto_1
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
