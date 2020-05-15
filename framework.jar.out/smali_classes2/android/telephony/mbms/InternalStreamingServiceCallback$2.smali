.class Landroid/telephony/mbms/InternalStreamingServiceCallback$2;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onStreamStateUpdated(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field final synthetic val$reason:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 61
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$state:I

    iput p3, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 66
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {v2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->access$000(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v2

    iget v3, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$state:I

    iget v4, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$reason:I

    invoke-virtual {v2, v3, v4}, Landroid/telephony/mbms/StreamingServiceCallback;->onStreamStateUpdated(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    nop

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
