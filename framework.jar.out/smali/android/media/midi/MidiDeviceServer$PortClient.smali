.class abstract Landroid/media/midi/MidiDeviceServer$PortClient;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PortClient"
.end annotation


# instance fields
.field final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;

    .line 99
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->mToken:Landroid/os/IBinder;

    .line 103
    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception p1

    .line 105
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 107
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 118
    return-void
.end method

.method abstract close()V
.end method

.method getInputPort()Landroid/media/midi/MidiInputPort;
    .locals 1

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method
