.class Landroid/telephony/NetworkService$INetworkServiceWrapper;
.super Landroid/telephony/INetworkService$Stub;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INetworkServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/NetworkService;


# direct methods
.method private constructor <init>(Landroid/telephony/NetworkService;)V
    .locals 0

    .line 258
    iput-object p1, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0}, Landroid/telephony/INetworkService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/NetworkService;Landroid/telephony/NetworkService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telephony/NetworkService;
    .param p2, "x1"    # Landroid/telephony/NetworkService$1;

    .line 258
    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$INetworkServiceWrapper;-><init>(Landroid/telephony/NetworkService;)V

    return-void
.end method


# virtual methods
.method public createNetworkServiceProvider(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 262
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->access$100(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void
.end method

.method public getNetworkRegistrationState(IILandroid/telephony/INetworkServiceCallback;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "domain"    # I
    .param p3, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 275
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->access$100(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    return-void
.end method

.method public registerForNetworkRegistrationStateChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 282
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->access$100(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 284
    return-void
.end method

.method public removeNetworkServiceProvider(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 268
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->access$100(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method

.method public unregisterForNetworkRegistrationStateChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 289
    iget-object v0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->access$100(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    return-void
.end method
