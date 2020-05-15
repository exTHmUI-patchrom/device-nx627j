.class Landroid/widget/OverScroller$SplineOverScroller$releasePerformanceLockRunnable;
.super Ljava/lang/Object;
.source "OverScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller$SplineOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "releasePerformanceLockRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method private constructor <init>(Landroid/widget/OverScroller$SplineOverScroller;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller$releasePerformanceLockRunnable;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/OverScroller$SplineOverScroller;Landroid/widget/OverScroller$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p2, "x1"    # Landroid/widget/OverScroller$1;

    .line 1044
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller$releasePerformanceLockRunnable;-><init>(Landroid/widget/OverScroller$SplineOverScroller;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1047
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller$releasePerformanceLockRunnable;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$1100(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller$releasePerformanceLockRunnable;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$1102(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    .line 1050
    :cond_0
    return-void
.end method
