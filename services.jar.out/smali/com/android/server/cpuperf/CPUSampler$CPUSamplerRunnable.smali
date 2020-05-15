.class Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;
.super Ljava/lang/Object;
.source "CPUSampler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpuperf/CPUSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUSamplerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cpuperf/CPUSampler;


# direct methods
.method private constructor <init>(Lcom/android/server/cpuperf/CPUSampler;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cpuperf/CPUSampler;Lcom/android/server/cpuperf/CPUSampler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/cpuperf/CPUSampler;
    .param p2, "x1"    # Lcom/android/server/cpuperf/CPUSampler$1;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;-><init>(Lcom/android/server/cpuperf/CPUSampler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->access$100(Lcom/android/server/cpuperf/CPUSampler;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->access$200(Lcom/android/server/cpuperf/CPUSampler;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->access$300(Lcom/android/server/cpuperf/CPUSampler;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v0}, Lcom/android/server/cpuperf/CPUSampler;->access$600(Lcom/android/server/cpuperf/CPUSampler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v1}, Lcom/android/server/cpuperf/CPUSampler;->access$400(Lcom/android/server/cpuperf/CPUSampler;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cpuperf/CPUSampler$CPUSamplerRunnable;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v2}, Lcom/android/server/cpuperf/CPUSampler;->access$500(Lcom/android/server/cpuperf/CPUSampler;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method
