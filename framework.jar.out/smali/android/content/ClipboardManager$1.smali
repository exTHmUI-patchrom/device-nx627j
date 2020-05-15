.class Landroid/content/ClipboardManager$1;
.super Landroid/content/IOnPrimaryClipChangedListener$Stub;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Landroid/content/ClipboardManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/ClipboardManager;

    .line 58
    iput-object p1, p0, Landroid/content/ClipboardManager$1;->this$0:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Landroid/content/IOnPrimaryClipChangedListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$dispatchPrimaryClipChanged$0(Landroid/content/ClipboardManager$1;)V
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/content/ClipboardManager$1;->this$0:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->reportPrimaryClipChanged()V

    .line 63
    return-void
.end method


# virtual methods
.method public dispatchPrimaryClipChanged()V
    .locals 2

    .line 61
    iget-object v0, p0, Landroid/content/ClipboardManager$1;->this$0:Landroid/content/ClipboardManager;

    invoke-static {v0}, Landroid/content/ClipboardManager;->access$000(Landroid/content/ClipboardManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/content/-$$Lambda$ClipboardManager$1$hQk8olbGAgUi4WWNG4ZuDZsM39s;

    invoke-direct {v1, p0}, Landroid/content/-$$Lambda$ClipboardManager$1$hQk8olbGAgUi4WWNG4ZuDZsM39s;-><init>(Landroid/content/ClipboardManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method
