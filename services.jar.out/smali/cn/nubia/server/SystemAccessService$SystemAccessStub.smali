.class final Lcn/nubia/server/SystemAccessService$SystemAccessStub;
.super Lnubia/os/ISystemAccess$Stub;
.source "SystemAccessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/SystemAccessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SystemAccessStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/SystemAccessService;


# direct methods
.method constructor <init>(Lcn/nubia/server/SystemAccessService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/SystemAccessService;

    .line 75
    iput-object p1, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-direct {p0}, Lnubia/os/ISystemAccess$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public enablePalmGesture(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 86
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$500(Lcn/nubia/server/SystemAccessService;Z)Z

    move-result v0

    return v0
.end method

.method public enableWakeGesture(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 80
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$400(Lcn/nubia/server/SystemAccessService;Z)Z

    move-result v0

    return v0
.end method

.method public getFactoryFlag(I)Z
    .locals 1
    .param p1, "keycode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$000(Lcn/nubia/server/SystemAccessService;)Z

    move-result v0

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$100(Lcn/nubia/server/SystemAccessService;)Z

    move-result v0

    return v0
.end method

.method public isHomeKeyDisabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$200(Lcn/nubia/server/SystemAccessService;)Z

    move-result v0

    return v0
.end method

.method public setFactoryFlag(ZZ)V
    .locals 1
    .param p1, "flag_endcall"    # Z
    .param p2, "flag_home"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$002(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 103
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0, p2}, Lcn/nubia/server/SystemAccessService;->access$102(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 104
    return-void
.end method

.method public setFactoryFlagTimeOut(ZZI)V
    .locals 4
    .param p1, "flag_endcall"    # Z
    .param p2, "flag_home"    # Z
    .param p3, "time_out"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$002(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 94
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0, p2}, Lcn/nubia/server/SystemAccessService;->access$102(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 95
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$600(Lcn/nubia/server/SystemAccessService;)Landroid/os/Handler;

    move-result-object v0

    int-to-long v1, p3

    const/16 v3, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    return-void
.end method

.method public setHomeKeyDisabled(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcn/nubia/server/SystemAccessService;->access$202(Lcn/nubia/server/SystemAccessService;Z)Z

    .line 121
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    iget-object v2, v2, Lcn/nubia/server/SystemAccessService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 125
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$200(Lcn/nubia/server/SystemAccessService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$302(Lcn/nubia/server/SystemAccessService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 128
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$300(Lcn/nubia/server/SystemAccessService;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    iget-object v2, v2, Lcn/nubia/server/SystemAccessService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemAccessService"

    const-string v2, "Link to DeathRecipient failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method
