.class final Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsVideoCallProvider;


# direct methods
.method private constructor <init>(Landroid/telephony/ims/ImsVideoCallProvider;)V
    .locals 0

    .line 121
    iput-object p1, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/ims/ImsVideoCallProvider;Landroid/telephony/ims/ImsVideoCallProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telephony/ims/ImsVideoCallProvider;
    .param p2, "x1"    # Landroid/telephony/ims/ImsVideoCallProvider$1;

    .line 121
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;-><init>(Landroid/telephony/ims/ImsVideoCallProvider;)V

    return-void
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 2

    .line 166
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    .line 162
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 150
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 151
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 152
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v1}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 157
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/ims/internal/IImsVideoCallCallback;

    .line 123
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public setCamera(Ljava/lang/String;I)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 127
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 128
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 129
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 130
    iget-object v1, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v1}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 142
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 138
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 170
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 171
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 134
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .line 146
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->access$100(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method
