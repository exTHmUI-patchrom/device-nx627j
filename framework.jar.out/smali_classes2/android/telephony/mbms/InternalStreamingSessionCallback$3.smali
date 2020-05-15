.class Landroid/telephony/mbms/InternalStreamingSessionCallback$3;
.super Ljava/lang/Object;
.source "InternalStreamingSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingSessionCallback;

    .line 82
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 87
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-static {v2}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->access$000(Landroid/telephony/mbms/InternalStreamingSessionCallback;)Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/mbms/MbmsStreamingSessionCallback;->onMiddlewareReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
