.class Landroid/webkit/WebView$releaseFlingPerformanceLockRunnable;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "releaseFlingPerformanceLockRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 2959
    iput-object p1, p0, Landroid/webkit/WebView$releaseFlingPerformanceLockRunnable;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebView;
    .param p2, "x1"    # Landroid/webkit/WebView$1;

    .line 2959
    invoke-direct {p0, p1}, Landroid/webkit/WebView$releaseFlingPerformanceLockRunnable;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2963
    iget-object v0, p0, Landroid/webkit/WebView$releaseFlingPerformanceLockRunnable;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$releaseFlingPerformanceLockRunnable;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$2700(Landroid/webkit/WebView;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2964
    iget-object v0, p0, Landroid/webkit/WebView$releaseFlingPerformanceLockRunnable;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2602(Landroid/webkit/WebView;Z)Z

    .line 2967
    :cond_0
    return-void
.end method
