.class Landroid/view/accessibility/CaptioningManager$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 222
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    .line 223
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 225
    iput-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    .line 226
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 230
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "uriPath":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "name":Ljava/lang/String;
    const-string v2, "accessibility_captioning_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->access$000(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    .line 234
    :cond_0
    const-string v2, "accessibility_captioning_locale"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->access$100(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    .line 236
    :cond_1
    const-string v2, "accessibility_captioning_font_scale"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->access$200(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v3}, Landroid/view/accessibility/CaptioningManager;->access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v3}, Landroid/view/accessibility/CaptioningManager;->access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    :goto_0
    return-void
.end method
