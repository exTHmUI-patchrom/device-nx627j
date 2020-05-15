.class Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$result:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    .line 1024
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    iput-object p3, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1027
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->access$1200(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;)Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Landroid/media/session/MediaSessionManager$OnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1028
    .local v0, "handled":Z
    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The media key listener is returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    .line 1031
    const/4 v2, 0x0

    .line 1030
    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1034
    :cond_0
    return-void
.end method
