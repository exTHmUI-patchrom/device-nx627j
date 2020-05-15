.class Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;
.super Lcom/android/ims/internal/IImsMultiEndpoint$Stub;
.source "ImsMultiEndpointImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;


# direct methods
.method constructor <init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    .line 44
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestImsExternalCallStateInfo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->requestImsExternalCallStateInfo()V

    .line 53
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->access$002(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    .line 48
    return-void
.end method
