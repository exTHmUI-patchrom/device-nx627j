.class Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->onActiveSessionsChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

.field final synthetic val$tokens:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    .line 918
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 921
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iget-object v0, v0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$500(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/content/Context;

    move-result-object v0

    .line 922
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 923
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    iget-object v2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 925
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 926
    new-instance v4, Landroid/media/session/MediaController;

    iget-object v5, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaSession$Token;

    invoke-direct {v4, v0, v5}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 928
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iget-object v3, v3, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v3}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$600(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object v3

    .line 929
    .local v3, "listener":Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    if-eqz v3, :cond_1

    .line 930
    invoke-interface {v3, v1}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 933
    .end local v1    # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    .end local v2    # "size":I
    .end local v3    # "listener":Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    :cond_1
    return-void
.end method
