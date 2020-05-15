.class public final Landroid/hardware/hdmi/HdmiPlaybackClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiPlaybackClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;,
        Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;
    }
.end annotation


# static fields
.field private static final ADDR_TV:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdmiPlaybackClient"


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 0
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .line 71
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 72
    return-void
.end method

.method private getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .locals 1
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    .line 130
    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient$2;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$2;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    return-object v0
.end method

.method private getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .locals 1
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    .line 121
    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$1;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    return-object v0
.end method


# virtual methods
.method public getDeviceType()I
    .locals 1

    .line 92
    const/4 v0, 0x4

    return v0
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiPlaybackClient"

    const-string/jumbo v2, "oneTouchPlay threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    .line 103
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiPlaybackClient"

    const-string/jumbo v2, "queryDisplayStatus threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendStandby()V
    .locals 3

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getDeviceType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->sendStandby(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiPlaybackClient"

    const-string/jumbo v2, "sendStandby threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
