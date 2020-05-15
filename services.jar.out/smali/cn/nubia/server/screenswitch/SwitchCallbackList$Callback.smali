.class final Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;
.super Ljava/lang/Object;
.source "SwitchCallbackList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/SwitchCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final mCookie:Ljava/lang/Object;

.field final synthetic this$0:Lcn/nubia/server/screenswitch/SwitchCallbackList;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/SwitchCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .param p3, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>.Callback;"
    .local p2, "callback":Landroid/os/IInterface;, "TE;"
    iput-object p1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->this$0:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    .line 46
    iput-object p3, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCookie:Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 50
    .local p0, "this":Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<TE;>.Callback;"
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->this$0:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->this$0:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->this$0:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->access$000(Lcn/nubia/server/screenswitch/SwitchCallbackList;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->this$0:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/SwitchCallbackList$Callback;->mCookie:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
