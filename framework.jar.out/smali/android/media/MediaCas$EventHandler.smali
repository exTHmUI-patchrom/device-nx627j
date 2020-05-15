.class Landroid/media/MediaCas$EventHandler;
.super Landroid/os/Handler;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MSG_CAS_EVENT:I


# instance fields
.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method public constructor <init>(Landroid/media/MediaCas;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 132
    iput-object p1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    .line 133
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 134
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->access$100(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 140
    invoke-static {v4, v5}, Landroid/media/MediaCas;->access$000(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object v4

    .line 139
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/MediaCas$EventListener;->onEvent(Landroid/media/MediaCas;II[B)V

    .line 142
    :cond_0
    return-void
.end method
