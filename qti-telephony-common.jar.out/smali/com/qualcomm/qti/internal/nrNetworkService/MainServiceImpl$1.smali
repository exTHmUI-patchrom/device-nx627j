.class Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;
.super Ljava/lang/Object;
.source "MainServiceImpl.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/nrNetworkService/hidl/IHidlConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 199
    iput-object p1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrConfigType"    # Lorg/codeaurora/internal/NrConfigType;

    .line 241
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gConfigInfo slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " NrConfigType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 243
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    return-void
.end method

.method public on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 202
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gStatus slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " enableStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 207
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, p2, p3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 206
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void
.end method

.method public onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "bearerStatus"    # Lorg/codeaurora/internal/BearerAllocationStatus;

    .line 222
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnyNrBearerAllocation slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bearerStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 225
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void
.end method

.method public onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;

    .line 268
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableEndc slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, p3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 272
    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    return-void
.end method

.method public onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "enableStatus"    # Z

    .line 277
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEndcStatus slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    .line 282
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, p2, p3, v4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 281
    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    return-void
.end method

.method public onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "dcParam"    # Lorg/codeaurora/internal/DcParam;

    .line 212
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrDcParam slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " DcParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 215
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void
.end method

.method public onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "nrIconType"    # Lorg/codeaurora/internal/NrIconType;

    .line 260
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNrIconType slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " NrIconType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 262
    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    return-void
.end method

.method public onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "signalStrength"    # Lorg/codeaurora/internal/SignalStrength;

    .line 250
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrength slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " signalStrength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 253
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    return-void
.end method

.method public onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lorg/codeaurora/internal/Token;
    .param p3, "status"    # Lorg/codeaurora/internal/Status;
    .param p4, "ulInfo"    # Lorg/codeaurora/internal/UpperLayerIndInfo;

    .line 232
    const-string v0, "MainServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpperLayerIndInfo slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UpperLayerIndInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->access$900(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl$Result;-><init>(Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;Lorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Ljava/lang/Object;)V

    .line 234
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method
