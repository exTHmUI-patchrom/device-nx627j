.class Landroid/app/NubiaHighlights$2;
.super Landroid/os/Handler;
.source "NubiaHighlights.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/NubiaHighlights;->createReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NubiaHighlights;


# direct methods
.method constructor <init>(Landroid/app/NubiaHighlights;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/NubiaHighlights;

    .line 64
    iput-object p1, p0, Landroid/app/NubiaHighlights$2;->this$0:Landroid/app/NubiaHighlights;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 67
    iget-object v0, p0, Landroid/app/NubiaHighlights$2;->this$0:Landroid/app/NubiaHighlights;

    invoke-static {v0}, Landroid/app/NubiaHighlights;->access$000(Landroid/app/NubiaHighlights;)Landroid/app/SysStateReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/app/NubiaHighlights$2;->this$0:Landroid/app/NubiaHighlights;

    invoke-static {v0}, Landroid/app/NubiaHighlights;->access$000(Landroid/app/NubiaHighlights;)Landroid/app/SysStateReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/SysStateReceiver;->onReceive(Landroid/os/Message;)V

    .line 70
    :cond_0
    return-void
.end method
