.class Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;
.super Landroid/telephony/ims/aidl/IImsRegistration$Stub;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;


# direct methods
.method constructor <init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 133
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->access$000(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 143
    return-void
.end method

.method public getRegistrationTechnology()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->getConnectionType()I

    move-result v0

    return v0
.end method

.method public removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->access$100(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 148
    return-void
.end method
