.class public Landroid/hardware/SerialManager;
.super Ljava/lang/Object;
.source "SerialManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/ISerialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/ISerialManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/ISerialManager;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/hardware/SerialManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    .line 42
    return-void
.end method


# virtual methods
.method public getSerialPorts()[Ljava/lang/String;
    .locals 2

    .line 51
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    invoke-interface {v0}, Landroid/hardware/ISerialManager;->getSerialPorts()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openSerialPort(Ljava/lang/String;I)Landroid/hardware/SerialPort;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SerialManager;->mService:Landroid/hardware/ISerialManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISerialManager;->openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 71
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Landroid/hardware/SerialPort;

    invoke-direct {v1, p1}, Landroid/hardware/SerialPort;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "port":Landroid/hardware/SerialPort;
    invoke-virtual {v1, v0, p2}, Landroid/hardware/SerialPort;->open(Landroid/os/ParcelFileDescriptor;I)V

    .line 74
    return-object v1

    .line 76
    .end local v1    # "port":Landroid/hardware/SerialPort;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open serial port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
