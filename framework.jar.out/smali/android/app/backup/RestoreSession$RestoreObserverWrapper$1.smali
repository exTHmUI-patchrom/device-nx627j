.class Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;
.super Landroid/os/Handler;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

.field final synthetic val$this$0:Landroid/app/backup/RestoreSession;


# direct methods
.method constructor <init>(Landroid/app/backup/RestoreSession$RestoreObserverWrapper;Landroid/os/Looper;Landroid/app/backup/RestoreSession;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 293
    iput-object p1, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iput-object p3, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->val$this$0:Landroid/app/backup/RestoreSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 307
    :pswitch_0
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/app/backup/RestoreSet;

    invoke-virtual {v0, v1}, Landroid/app/backup/RestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    goto :goto_0

    .line 304
    :pswitch_1
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/backup/RestoreObserver;->restoreFinished(I)V

    .line 305
    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/RestoreObserver;->onUpdate(ILjava/lang/String;)V

    .line 302
    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/backup/RestoreObserver;->restoreStarting(I)V

    .line 299
    nop

    .line 310
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
