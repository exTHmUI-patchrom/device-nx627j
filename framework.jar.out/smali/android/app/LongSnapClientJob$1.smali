.class Landroid/app/LongSnapClientJob$1;
.super Ljava/lang/Object;
.source "LongSnapClientJob.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LongSnapClientJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/LongSnapClientJob;


# direct methods
.method constructor <init>(Landroid/app/LongSnapClientJob;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/LongSnapClientJob;

    .line 76
    iput-object p1, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 79
    iget-object v0, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Landroid/app/LongSnapClientJob;->access$002(Landroid/app/LongSnapClientJob;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 80
    iget-object v0, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/LongSnapClientJob;->mBound:Z

    .line 82
    iget-object v0, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    new-instance v1, Landroid/app/LongSnapClientJob$ClientWorkHandler;

    iget-object v2, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/LongSnapClientJob$ClientWorkHandler;-><init>(Landroid/app/LongSnapClientJob;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Landroid/app/LongSnapClientJob;->access$102(Landroid/app/LongSnapClientJob;Landroid/os/Handler;)Landroid/os/Handler;

    .line 83
    iget-object v0, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v2}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Landroid/app/LongSnapClientJob;->access$202(Landroid/app/LongSnapClientJob;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 85
    iget-object v0, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v0}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 86
    .local v0, "msgPrep":Landroid/os/Message;
    iget-object v1, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v1}, Landroid/app/LongSnapClientJob;->access$100(Landroid/app/LongSnapClientJob;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 91
    iget-object v0, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/LongSnapClientJob;->access$002(Landroid/app/LongSnapClientJob;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 92
    iget-object v0, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/app/LongSnapClientJob;->mBound:Z

    .line 93
    iget-object v0, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v0, v1}, Landroid/app/LongSnapClientJob;->access$102(Landroid/app/LongSnapClientJob;Landroid/os/Handler;)Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Landroid/app/LongSnapClientJob$1;->this$0:Landroid/app/LongSnapClientJob;

    invoke-static {v0, v1}, Landroid/app/LongSnapClientJob;->access$202(Landroid/app/LongSnapClientJob;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 95
    return-void
.end method
