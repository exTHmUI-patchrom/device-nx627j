.class Lnubia/fancydrawable/TimeDrawable$1;
.super Ljava/lang/Object;
.source "TimeDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/fancydrawable/TimeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/fancydrawable/TimeDrawable;


# direct methods
.method constructor <init>(Lnubia/fancydrawable/TimeDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lnubia/fancydrawable/TimeDrawable;

    .line 110
    iput-object p1, p0, Lnubia/fancydrawable/TimeDrawable$1;->this$0:Lnubia/fancydrawable/TimeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 113
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable$1;->this$0:Lnubia/fancydrawable/TimeDrawable;

    invoke-virtual {v0}, Lnubia/fancydrawable/TimeDrawable;->invalidateSelf()V

    .line 115
    iget-object v0, p0, Lnubia/fancydrawable/TimeDrawable$1;->this$0:Lnubia/fancydrawable/TimeDrawable;

    iget-object v0, v0, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 116
    const/16 v0, 0x3c

    .line 117
    .local v0, "second":I
    iget-object v1, p0, Lnubia/fancydrawable/TimeDrawable$1;->this$0:Lnubia/fancydrawable/TimeDrawable;

    invoke-static {v1}, Lnubia/fancydrawable/TimeDrawable;->access$000(Lnubia/fancydrawable/TimeDrawable;)Landroid/text/format/Time;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v2, p0, Lnubia/fancydrawable/TimeDrawable$1;->this$0:Lnubia/fancydrawable/TimeDrawable;

    invoke-static {v2}, Lnubia/fancydrawable/TimeDrawable;->access$000(Lnubia/fancydrawable/TimeDrawable;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 119
    iget-object v2, p0, Lnubia/fancydrawable/TimeDrawable$1;->this$0:Lnubia/fancydrawable/TimeDrawable;

    invoke-static {v2}, Lnubia/fancydrawable/TimeDrawable;->access$000(Lnubia/fancydrawable/TimeDrawable;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->second:I

    move v0, v2

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const/16 v1, 0x3c

    rsub-int/lit8 v2, v0, 0x3c

    if-lez v2, :cond_0

    sub-int/2addr v1, v0

    nop

    .line 123
    .local v1, "nexttime":I
    :cond_0
    iget-object v2, p0, Lnubia/fancydrawable/TimeDrawable$1;->this$0:Lnubia/fancydrawable/TimeDrawable;

    iget-object v2, v2, Lnubia/fancydrawable/TimeDrawable;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lnubia/fancydrawable/TimeDrawable$1;->this$0:Lnubia/fancydrawable/TimeDrawable;

    invoke-static {v3}, Lnubia/fancydrawable/TimeDrawable;->access$100(Lnubia/fancydrawable/TimeDrawable;)Ljava/lang/Runnable;

    move-result-object v3

    const/16 v4, 0x3e8

    mul-int/2addr v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "second":I
    .end local v1    # "nexttime":I
    goto :goto_0

    .line 120
    .restart local v0    # "second":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 125
    .end local v0    # "second":I
    :cond_1
    :goto_0
    return-void
.end method
