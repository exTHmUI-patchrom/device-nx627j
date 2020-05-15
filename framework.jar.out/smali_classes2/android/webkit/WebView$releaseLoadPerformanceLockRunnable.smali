.class Landroid/webkit/WebView$releaseLoadPerformanceLockRunnable;
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
    name = "releaseLoadPerformanceLockRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 2970
    iput-object p1, p0, Landroid/webkit/WebView$releaseLoadPerformanceLockRunnable;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/WebView;
    .param p2, "x1"    # Landroid/webkit/WebView$1;

    .line 2970
    invoke-direct {p0, p1}, Landroid/webkit/WebView$releaseLoadPerformanceLockRunnable;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2974
    iget-object v0, p0, Landroid/webkit/WebView$releaseLoadPerformanceLockRunnable;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$releaseLoadPerformanceLockRunnable;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2975
    iget-object v0, p0, Landroid/webkit/WebView$releaseLoadPerformanceLockRunnable;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$2802(Landroid/webkit/WebView;Z)Z

    .line 2978
    :cond_0
    return-void
.end method
