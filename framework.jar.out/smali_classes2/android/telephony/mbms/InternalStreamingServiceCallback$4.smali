.class Landroid/telephony/mbms/InternalStreamingServiceCallback$4;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field final synthetic val$signalStrength:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 99
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;->val$signalStrength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 104
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {v2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->access$000(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v2

    iget v3, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;->val$signalStrength:I

    invoke-virtual {v2, v3}, Landroid/telephony/mbms/StreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    nop

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
