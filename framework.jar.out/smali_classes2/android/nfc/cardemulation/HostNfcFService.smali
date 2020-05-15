.class public abstract Landroid/nfc/cardemulation/HostNfcFService;
.super Landroid/app/Service;
.source "HostNfcFService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;
    }
.end annotation


# static fields
.field public static final DEACTIVATION_LINK_LOSS:I = 0x0

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final MSG_COMMAND_PACKET:I = 0x0

.field public static final MSG_DEACTIVATED:I = 0x2

.field public static final MSG_RESPONSE_PACKET:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.host_nfcf_service"

.field static final TAG:Ljava/lang/String; = "NfcFService"


# instance fields
.field final mMessenger:Landroid/os/Messenger;

.field mNfcService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    .line 171
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;

    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;-><init>(Landroid/nfc/cardemulation/HostNfcFService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 233
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onDeactivated(I)V
.end method

.method public abstract processNfcFPacket([BLandroid/os/Bundle;)[B
.end method

.method public final sendResponsePacket([B)V
    .locals 5
    .param p1, "responsePacket"    # [B

    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, "responseMsg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v1, "dataBundle":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 248
    :try_start_0
    iget-object v2, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TAG"

    const-string v4, "Local messenger has died."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
