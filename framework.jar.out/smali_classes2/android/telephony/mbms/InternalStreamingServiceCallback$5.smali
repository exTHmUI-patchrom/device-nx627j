.class Landroid/telephony/mbms/InternalStreamingServiceCallback$5;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onStreamMethodUpdated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field final synthetic val$methodType:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 118
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->val$methodType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 123
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {v2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->access$000(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v2

    iget v3, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->val$methodType:I

    invoke-virtual {v2, v3}, Landroid/telephony/mbms/StreamingServiceCallback;->onStreamMethodUpdated(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    nop

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
